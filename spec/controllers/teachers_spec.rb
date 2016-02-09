require 'rails_helper'

RSpec.describe TeachersController, :type => :controller do



  describe '#index' do
    it 'should return list of teachers' do
      get :index
      expect(assigns(:teachers)).not_to be_nil
    end
  end

  describe '#show' do
    it 'should assign teacher' do
      get :show, id: teacher
      expect(assigns(:teacher)).not_to be_nil
    end
  end
end
