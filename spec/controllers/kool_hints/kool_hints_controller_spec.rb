require 'spec_helper'

describe KoolHints::KoolHintsController do
  render_views

  before :each do
    KoolHints::ApplicationController.any_instance.stub(:root_path) {'/'}
    @koolhint = FactoryGirl.create(:kool_hint)
  end

  describe "GET edit" do
    it "shows the edit page" do
      get :edit, id: @koolhint.id, use_route: :kool_hints
      expect(response.body).to include("Hint '#{@koolhint.name.humanize}' Details")
    end
  end

  describe "PATCH update" do
    it "updates the hint" do
      updated_content = "Regular brushing stimulates the skin and helps to distribute the natural oils that produce a healthy shining coat"
      patch :update, id: @koolhint.id, name: @koolhint.name, content: updated_content, use_route: :kool_hints
      expect(@koolhint.reload.content).to eq(updated_content)
    end
  end
end