require 'test_helper'

class TrackableTest < ActiveSupport::TestCase
  test 'required_fields should contain the fields that Devise uses' do
    assert_equal Devise::Models::Trackable::ModuleMethods.required_fields.sort, [
      :current_sign_in_at,
      :current_sign_in_ip,
      :last_sign_in_at,
      :last_sign_in_ip,
      :sign_in_count
    ]
  end
end
