Dado(/^que estou no site do UOL$/) do
    visit "http://google.com.br"
    fill_in "lst-ib", :with => "uol"
    click_link("UOL - O melhor conteúdo")
    sleep 5
    expect(page.title).to eq("UOL - O melhor conteúdo")
end

Quando(/^acesso a tela de Economia$/) do
  click_link("Economia")
end

Quando(/^verifico o valor do dolar$/) do
  sleep 10
  dolar = find(".cotacao")
  puts dolar.value
end

Então(/^devo ver que o valor do dolar é menor que "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
