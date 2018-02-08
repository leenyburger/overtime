require 'rails_helper'

describe 'navigate' do
	describe 'index' do
		it 'can be reached successfully' do
			visit posts_path
			expect(page.status_code).to eq(200)
		end

		it 'has content of Posts' do
			visit posts_path
			expect(page).to have_content(/Posts/)
		end
	end

	describe 'creation' do
		it 'has a new form that can be reached' do
			visit new_post_path 
			expect(page.status_code).to eq(200)
		end
	end
end