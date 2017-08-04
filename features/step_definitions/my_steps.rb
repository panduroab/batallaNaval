Given(/^inicie el juego$/) do
  visit '/'
end

Then(/^debo ver "Batalla Espacial"$/) do
  expect(page.body).to match "Batalla Espacial"
end

