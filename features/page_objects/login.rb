# Login page elements
class LoginElements < SitePrism::Page
  # HomePage Elements
  element :login_area,     'a[href="/login"]'
  element :email,          '#register-email'
  element :create_account, 'button[class="btn btn-block btn-max-350"]'[0]
  element :login,          'button[class="btn btn-block btn-max-350"]'[1]

  # Login Form Elements
  element :name,                   '#registerfirstName'
  element :last_name,              '#registerlastName'
  element :ddl_gender,             '#gender'
  element :cpf,                    '#register.cpf'
  element :phone,                  '#registerTelephone'
  element :ddl_phone_type,         '#typePhone'
  element :ddl_born_day,           '#birthDay'
  element :ddl_born_month,         '#birthMonth'
  element :ddl_born_year,          '#birthYear'
  element :password,               '#password'
  element :confirm_password,       '#register.checkPwd'
  element :chck_get_newsletter,    '#newsletter'
  element :chck_remember_password, '#rememberMe'
  element :chck_accept_terms,      '#termsOfUseAgreement'
  element :finish_register,        '#continue-full-register'
end
