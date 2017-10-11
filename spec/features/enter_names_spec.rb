feature 'Displays content' do # , type: :feature do
  # before :each do
  # end

  # it 'displays test content' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'collects users names' do
    visit '/'
    fill_in :player_1_name, with: 'Bob'
    fill_in :player_2_name, with: 'Jim'
    click_button('Save')
    expect(page).to have_content 'Bob vs. Jim'
  end

  scenario 'page displays player 2 HPs' do
    visit '/'
    fill_in :player_1_name, with: 'Bob'
    fill_in :player_2_name, with: 'Jim'
    click_button('Save')
    expect(page).to have_content 'Jim HPs: 0'
  end
end
