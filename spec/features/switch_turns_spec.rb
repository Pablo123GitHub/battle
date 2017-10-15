require 'spec_helper'

describe 'Switch turns' do

    scenario 'at the start of the game' do
      visit '/'
      fill_in :player_1_name, with: 'Pablo'
      fill_in :player_2_name, with: 'Lucas'
      click_button('Save')
      expect(page).to have_content "Pablo's turn"
    end

    scenario 'after player 1 attacks' do
      visit '/'
      fill_in :player_1_name, with: 'Pablo'
      fill_in :player_2_name, with: 'Lucas'
      click_button('Save')
      click_button 'Attack'
      expect(page).not_to have_content "Pablo's turn"
      expect(page).to have_content "Lucas's turn"
    end
end
