# Базовий клас обробника
class AuthorizationHandler
  attr_accessor :next_handler

  def set_next_handler(handler)
    @next_handler = handler
  end

  def authorize(request)
    raise NotImplementedError, 'Subclasses must implement this method'
  end

  protected

  def process_next_handler(request)
    next_handler.nil? || next_handler.authorize(request)
  end
end

# Конкретний обробник для перевірки електронної адреси
class EmailHandler < AuthorizationHandler
  def authorize(request)
    if valid_email?(request[:email])
      process_next_handler(request)
    else
      puts('Адреса повинна містити @')
      false
    end
  end

  private

  def valid_email?(email)
    email.include?('@')
  end
end

# Конкретний обробник для перевірки паролю
class PasswordHandler < AuthorizationHandler
  def authorize(request)
    if valid_password?(request[:password])
      process_next_handler(request)
    else
      puts('Пароль повинен бути довжиною мінімум 8 символів')
      false
    end
  end

  private

  def valid_password?(password)
    password.length >= 8
  end
end

# Використання ланцюжка обробників
email_handler = EmailHandler.new
password_handler = PasswordHandler.new

email_handler.set_next_handler(password_handler)

# Створення об'єкта запиту з інформацією користувача
request = { email: 'user@gmail.com', password: '123456789' }

# Виклик обробки запиту
result = email_handler.authorize(request)

# Перевірка результатів
if result
  puts 'Користувач успішно авторизований.'
else
  puts 'Авторизація не вдалася.'
end
