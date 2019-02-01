require 'singleton'

# Generate random values
class GenerateData
  include Singleton

  def self.full_name
    Faker::Name.name
  end

  def self.last_name
    Faker::Name.last_name
  end

  def self.mail
    Faker::Internet.email
  end

  def self.cpf
    Laranja::Documento.cpf
  end

  def self.cellphone
    Faker::Number.number(11)
  end
end
