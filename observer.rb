# functions for observable
module ObserverTracking
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers.push(observer)
  end

  def remove_observer(observer)
    @observers.delete(observer)
    puts("#{observer} was successfully removed from match observers!")
  end

  def notify_observer
    unless @observers.empty?
      @observers.each do |observer|
        observer.update(self)
      end
    end
  end
end

# observable
class Match
  include ObserverTracking

  attr_reader :team1, :team2, :goals

  def initialize(team1, team2)
    super()
    @team1 = team1
    @team2 = team2
    @goals = []
  end

  # event of interest to observers
  def goal_scored(team, time)
    @goals.append([team, time])
    notify_observer
  end

  # get game score in hash
  def game_score
    goals_count = { team1: 0, team2: 0 }

    @goals.each do |goal, _|
      if goal == @team1
        goals_count[:team1] += 1
      elsif goal == @team2
        goals_count[:team2] += 1
      end
    end

    goals_count
  end

  # winner in this moment
  def get_winner
    team1_goals, team2_goals = game_score[:team1], game_score[:team2]

    if team1_goals > team2_goals
      @team1
    elsif team2_goals > team1_goals
      @team2
    else
      "draw" if team2_goals == team1_goals
    end
  end

  # goal difference between the teams
  def get_difference
    (game_score[:team1] - game_score[:team2]).abs
  end
end

# just for clarity
class Observer
  def update(value); end
end

class GoalNotificationObserver < Observer
  attr_reader :team_scored, :scoring_minute

  def update(value)
    super # for clarity, it shows that we inherit from the observer class
    @team_scored, @scoring_minute = value.goals[-1]
    score = value.game_score
    team1_goals = score[:team1]
    team2_goals = score[:team2]

    if @team_scored == value.team1
      team1_goals = "[#{team1_goals}]"
    else
      team2_goals = "[#{team2_goals}]"
    end

    puts("⚽ #{@scoring_minute}' #{value.team1} #{team1_goals} : #{team2_goals} #{value.team2}")
  end

  def to_s
    "Goal notifications"
  end
end

class FanObserver < Observer
  attr_reader :name, :team

  def initialize(name, team)
    @name = name
    @team = team
  end

  def update(value)
    super # for clarity, it shows that we inherit from the observer class
    if value.get_winner == @team
      puts("#{@name} favorite team is winning now!")
    elsif value.get_winner == "draw"
      puts("The score of the match is even!")
    else
      puts("#{name}'s favorite team needs a comeback! Goals needed for comeback: #{value.get_difference}")
    end
  end

  def to_s
    "Fan name: #{@name}; team: #{@team};"
  end
end

# teams
nm = "North Macedonia"
ukr = "Ukraine"

nm_ukr = Match.new(nm, ukr)
goal_notification_observer = GoalNotificationObserver.new
fan_kolya = FanObserver.new("Kolya", ukr)

# subscribe
nm_ukr.add_observer(goal_notification_observer)
nm_ukr.add_observer(fan_kolya)

# Match start
nm_ukr.goal_scored(nm, 31)
nm_ukr.goal_scored(nm, 38)
nm_ukr.goal_scored(ukr, 62)
nm_ukr.goal_scored(ukr, 67)
nm_ukr.goal_scored(ukr, 83)
# Match finish

puts

# unsubscribe
nm_ukr.remove_observer(goal_notification_observer)
nm_ukr.remove_observer(fan_kolya)