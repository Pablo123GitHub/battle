feature Battle do # , type: :feature do
  scenario 'welcomes players' do
    visit '/'
    expect(page).to have_content 'Welcome, Players!'
  end

  scenario 'collects users names' do
    sign_in_and_play
    expect(page).to have_content 'Pablo vs. Lucas'
  end

  scenario 'page displays player 2 HPs' do
    sign_in_and_play
    expect(page).to have_content 'Lucas HPs: 60'
  end

  scenario 'P1 attacks P2 and receives confirmation' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content 'Pablo (P1) attacked Lucas (P2)!'
  end
end
