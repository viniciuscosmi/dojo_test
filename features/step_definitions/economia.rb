Dado(/^que estou no site do UOL$/) do
  visit "http://www.google.com.br/"
  fill_in "lst-ib", :with => "UOL"
  click_link("UOL - O melhor conteúdo")
  sleep 5
  expect(page.title).to eq("UOL - O melhor conteúdo")
end

Quando(/^acessar a tela de Economia$/) do
  click_link("Economia")
end

Quando(/^verificar o valor do dolar$/) do
  @dolar = find("#cambio").find("ul").find("li", match: :first).find(".cotacao").text.split("$ ").last
  @dolar = @dolar.gsub(",",".")
end

Então(/^o valor do dolar deve ser menor que "([^"]*)"$/) do |valor|
  if (@dolar.to_f < valor.to_f)
    puts "SUCESSO!!"
  else
    fail
  end
end
