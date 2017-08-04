Given(/^inicie el juego$/) do
    visit("/")
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo ver el "([^"]*)"$/) do |tablero|
  expect(page).to have_xpath("//table[@id=\"#{tablero}\"]")
end

Then(/^que el "([^"]*)" tenga (\d+) filas$/) do |tablero, filas|
  expect(page).to have_xpath("//table[@id=\"#{tablero}\"]/tr", count: filas)
end

Then(/^que el "([^"]*)" tenga (\d+) celdas$/) do |tablero, celdas|
  expect(page).to have_xpath("//table[@id=\"#{tablero}\"]/tr/td", count: celdas)
end

When(/^hago un ataque en "([^"]*)"$/) do |celda|
	click_link("#{celda}")
end

Then(/^el link "([^"]*)" debe desaparecer$/) do |arg1|
	pending #page.should have_no_content(arg1)
end

Then(/^debo ver una "([^"]*)" en "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end
