Given(/^voy a la pagina inicial$/) do
  visit '/'
end

Given(/^voy a la pagina jugar$/) do
    visit '/'
    fill_in("nombre", :with => "Juan")
    select "Facil", :from  => "nivel"
    click_button( "ingresar" )
end

Then(/^ingreso nombre "(.*?)"$/) do |arg1|
  fill_in("nombre", :with => arg1)
end

Then(/^elijo dificultad "(.*?)"$/) do |arg1|
  select "Facil", :from  => "nivel"
end

Then(/^veo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^toco jugar$/) do
  click_button( "jugar" )
end

When(/^jugar "(.*?)"$/) do |arg1|
  @@juego.simular(arg1)
  click_button( "jugar" )
end
