feature 'Hit points' do
  scenario 'displays hit point' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100 HP'
  end
end