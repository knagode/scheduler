require 'rails_helper'

RSpec.describe SlotsController, type: :controller do
  describe '#index' do
    it 'should return list of slots for current_techer' do
      get :index
      expect(assigns(:slots)).not_to be_nil
    end
  end

  describe '#create' do
    it 'should add new item to the database' do
      create :teacher
      expect{
        post :create, { slot: {start_at: Time.now, stop_at: 30.minutes.from_now}}
      }.to change{ Lesson.all.count }
    end
  end
end
