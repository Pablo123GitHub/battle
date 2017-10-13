feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Lucas points are now : 50'
  end
end
