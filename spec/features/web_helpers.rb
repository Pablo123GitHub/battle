def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: 'Pablo'
  fill_in :player_2_name, with: 'Lucas'
  click_button('Save')
end
