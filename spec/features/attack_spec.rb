feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).not_to have_content 'Pablo HPs: 60'
    expect(page).to have_content 'Lucas HPs: 50'
  end
end
