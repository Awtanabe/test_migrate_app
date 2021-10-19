require 'rails_helper'

RSpec.describe '' do
  before do
   Todo.create(title: "todo1")
  end
  it 'ホーム' do
    visit('/todos')
    expect(page).to have_content('todo1')
  end
end