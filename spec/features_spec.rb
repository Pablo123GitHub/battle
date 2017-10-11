feature 'Displays content' do # , type: :feature do
  # before :each do
  # end

  it 'displays test content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
