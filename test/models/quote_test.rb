require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
    quote =  Quote.create(:author => 'RJ Dellecese', :saying => 'Man is born free, but everywhere he is in chains.')
    expected = 'RD#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end
end
