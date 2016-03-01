Given(/^a word "(.*?)"$/) do |arg1|
end

When(/^game start$/) do
	visit "http://localhost:3000/game/index"
end

Then(/^tries is (\d+)$/) do |tries|
	expect(page).to have_content(tries)
end

Then(/^length is (\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^used is "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^Discovered is "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end