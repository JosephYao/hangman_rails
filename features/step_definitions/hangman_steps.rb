Given(/^a word '(.*?)'$/) do |word|
	@word = word
end

When(/^game start$/) do
	visit "http://localhost:3000/game/index?word=#{@word}"
end

Then(/^tries is (\d+)$/) do |tries|
	expect(page).to have_content(tries)
end

Then(/^length is (\d+)$/) do |length|
	expect(page).to have_content(length)
end

Then(/^used is "(.*?)"$/) do |used|
	expect(page).to have_content(used)
end

Then(/^Discovered is "(.*?)"$/) do |discovered|
	expect(page).to have_content(discovered)
end

Given(/^start game with word '(.*?)'$/) do |arg1|
  step "a word '#{arg1}'"
  step 'game start'
end

When(/^type an incorrect letter "(.*?)"$/) do |arg1|
  page.click_button(arg1)
end
