Given(/^inicie el juego$/) do
    visit("/")
end

Then(/^debo ver "([^"]*)"$/) do |texto|
    expect(page.body).to match /#{texto}/m
end

Then(/^debo ver el tablero de "([^"]*)"$/) do |tablero|
  expect(page).to have_xpath("//table[@id=\"tbl#{tablero}\"]")
end

Then(/^que el "([^"]*)" tenga (\d+) filas$/) do |tablero, filas|
  expect(page).to have_xpath("//table[@id=\"#{tablero}\"]/tr", count: filas)
end

Given(/^que el tablero tenga (\d+) celdas$/) do |celdas|
    expect(page).to have_xpath('//table/tr/td', count: celdas)
end

Then(/^debo ver mi nave en la posición "([^"]*)"$/) do |posicion|
    find("//td[@id=\"#{posicion}\"]", :text => "x")
end

Then(/^que el "([^"]*)" tenga (\d+) celdas$/) do |tablero, celdas|
  expect(page).to have_xpath("//table[@id=\"#{tablero}\"]/tr/td", count: celdas)
end

When(/^hago un ataque en "([^"]*)"$/) do |celda|
	click_link("#{celda}")
end

