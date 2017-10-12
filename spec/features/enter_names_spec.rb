feature Battle do # , type: :feature do
  # before :each do
  # end

  it 'welcomes players' do
    visit '/'
    expect(page).to have_content 'Welcome, Players!'
  end

  scenario 'collects users names' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs. Jim'
  end

  scenario 'page displays player 2 HPs' do
    sign_in_and_play
    expect(page).to have_content 'Jim HPs: 50'
  end

  scenario 'P1 attacks P2 and receives confirmation' do
    sign_in_and_play
    # expect(page).to_not have_content 'Bob (P1) attacked Jim (P2)!'
    click_button('Attack!')
    expect(page).to have_content 'Bob (P1) attacked Jim (P2)!'
  end

  # scenario 'P1 attack deducts points from P2' do
  #   sign_in_and_play
  #   click_button('Attack!')
  #   expect(page).to have_content "Jim HPs: #{50 - 1}"
  # end
end
