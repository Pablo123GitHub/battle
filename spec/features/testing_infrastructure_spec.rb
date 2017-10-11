feature 'Displays content' do # , type: :feature do
  # before :each do
  # end

  # it 'displays test content' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  it 'collects users names' do
    visit '/'
    fill_in('Name', with: 'Bob')
    click_button('Save')
    expect(page).to have_content 'Bob'
  end
end
