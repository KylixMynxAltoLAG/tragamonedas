Given(/^voy a la pagina inicial$/) do
  visit '/'
end

Then(/^veo "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^jugar "(.*?)"$/) do |arg1|
  fill_in("tipojuego", :with => arg1)
  click_button( "jugar" )
end

