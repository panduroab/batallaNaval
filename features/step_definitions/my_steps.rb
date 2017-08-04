Given(/^inicie el juego$/) do
    visit("/")
end

Then(/^debo ver "([^"]*)"$/) do |texto|
    expect(page.body).to match /#{texto}/m
end

Then(/^debo ver el tablero de "([^"]*)"$/) do |tablero|
  expect(page).to have_xpath("//table[@id=\"tbl#{tablero}\"]")
end

Given(/^que el tablero tenga (\d+) filas$/) do |filas|
    expect(page).to have_xpath('//table/tr', count: filas)
end

Given(/^que el tablero tenga (\d+) celdas$/) do |celdas|
    expect(page).to have_xpath('//table/tr/td', count: celdas)
end

Then(/^debo ver mi nave en la posición "([^"]*)"$/) do |posicion|
    #expect(page).to have_xpath("//td[@id=\"#{posicion}\"]")
    find("//td[@id=\"#{posicion}\"]", :text => "x")
end