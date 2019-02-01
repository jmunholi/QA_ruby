# Login methods and classes
class C4Login < LoginElements
  def initialize
    @mail = GenerateData.mail
    @name = GenerateData.full_name
    @lastname = GenerateData.last_name
    @cpf = GenerateData.cpf
    @celphone = GenerateData.cellphone
    @password = 'senha123'
  end

  def load_uri(uri)
    visit($parameters['app_host'] + uri) if uri != ""
  end

  def register_user
    load_uri('login')

    email.set(@mail)
    create_account.click

    name.set(@name)
    last_name.set(@lastname)
    ddl_gender.select('male')
    cpf.set(@cpf)
    phone.set(@celphone)
    ddl_phone_type.select('FIXO')
    ddl_born_day.select('31')
    ddl_born_month.select('3')
    ddl_born_year.select('1992')
    password.set(@password)
    confirm_password.set(@password)
  end
end
