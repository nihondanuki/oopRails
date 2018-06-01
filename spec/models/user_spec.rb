require 'rails_helper'

RSpec.describe User, type: :model do
  describe "user valid?" do
    subject { User.create(params) }
    context "user is valid" do
      let(:params) {{email: "a@a.com", password: "foobar", password_confirmation: "foobar"}}
      it {is_expected.to be_valid}
    end
    context "email is invalid" do
      let(:params) {{password: "foobar", password_confirmation: "foobar"}}
      it {is_expected.to be_invalid}
    end
    context "password is invalid" do
      let(:params) {{email: "a@a.com"}}
      it {is_expected.to be_invalid}
    end
    context "user is not unique" do
      let(:params) {{email: "a@a.com", password: "foobar", password_confirmation: "foobar"}}
      before do
        User.create(params)
      end
      it {is_expected.to be_invalid}
    end
  end
end
