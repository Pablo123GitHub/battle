feature 'Displays content' do # , type: :feature do
  # before :each do
  # end

  # it 'displays test content' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  scenario 'collects users names' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs. Jim'
  end

  scenario 'page displays player 2 HPs' do
    sign_in_and_play
    expect(page).to have_content 'Jim HPs: 0'
  end
end
