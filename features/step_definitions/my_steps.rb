Given(/^inicie el juego$/) do
    visit("/")
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo ver el tablero$/) do
    expect(page).to have_xpath("//table[@id=\"tablero\"]")
end

Given(/^que el tablero tenga (\d+) filas$/) do |filas|
    expect(page).to have_xpath('//table/tr', count: filas)
end

Given(/^que el tablero tenga (\d+) celdas$/) do |celdas|
  expect(page).to have_xpath('//table/tr/td', count: celdas)
end