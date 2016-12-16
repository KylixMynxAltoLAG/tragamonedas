Given(/^voy a la pagina inicial$/) do
  visit '/'
end

Given(/^voy a la pagina jugar$/) do
  visit '/jugar'
end

Then(/^ingreso nombre "(.*?)"$/) do |arg1|
  fill_in("nombre", :with => arg1)
end

Then(/^elijo dificultad "(.*?)"$/) do |arg1|
  select "Facil", :from  => "dificultad"
end

Then(/^veo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^jugar "(.*?)"$/) do |arg1|
  fill_in("tipojuego", :with => arg1)
  click_button( "jugar" )
end

Then(/^veo contador en (\d+)$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^veo nivel en "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end







