require 'nokogiri'
require 'open-uri'
require 'csv'

# отримання імен госпіталей
def parse_page(url)
  doc = Nokogiri::HTML(URI.open(url))
  # текст з тегів <a> усередині списку
  doc.css("#BlinkDBContent_849210 ul li a").map { |hospital| hospital.text }
end

# запис даних у CSV
def output_to_csv(data)
  CSV.open("hospitals.csv", "w") do |csv|
    csv << %w[id hospital_name]
    data.each_with_index do |name, index|
      csv << [index + 1, name]
    end
  end
end

# методи для отримання даних та запису у CSV
output_to_csv(parse_page("https://www.hospitalsafetygrade.org/all-hospitals"))
