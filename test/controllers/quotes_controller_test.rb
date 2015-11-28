require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test "quote show page" do
    quote =  Quote.create(:author => 'RJ Dellecese', :saying => 'Man is born free, but everywhere he is in chains.')
    get :show, :id => quote.id
    assert_response :success
  end

  test "quote show page, not found" do
    get :show, :id => 'fake'
    assert_response :not_found
  end
end
