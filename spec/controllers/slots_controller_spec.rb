require 'rails_helper'

RSpec.describe SlotsController, type: :controller do
  describe '#index' do
    it 'should return list of slots for current_techer' do
      get :index
      expect(assigns(:slots)).not_to be_nil
    end
  end
end
