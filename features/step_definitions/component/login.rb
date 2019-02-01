Given('que acesso o ecommerce') do
  C4Login.new.load_uri
end

When('cadastro dados de usuário') do
  C4Login.new.register_user
end

Then('cadastro realizado com sucesso') do
  pending # Write code here that turns the phrase above into concrete actions
end
