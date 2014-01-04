require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SendSmsController do

  # This should return the minimal set of attributes required to create a valid
  # SendSms. As you add validations to SendSms, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SendSmsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET show" do
    it "assigns the requested send_sms as @send_sms" do
      send_sms = SendSms.create! valid_attributes
      get :show, {:id => send_sms.to_param}, valid_session
      assigns(:send_sms).should eq(send_sms)
    end
  end

  describe "GET new" do
    it "assigns a new send_sms as @send_sms" do
      get :new, {}, valid_session
      assigns(:send_sms).should be_a_new(SendSms)
    end
  end

  describe "GET edit" do
    it "assigns the requested send_sms as @send_sms" do
      send_sms = SendSms.create! valid_attributes
      get :edit, {:id => send_sms.to_param}, valid_session
      assigns(:send_sms).should eq(send_sms)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SendSms" do
        expect {
          post :create, {:send_sms => valid_attributes}, valid_session
        }.to change(SendSms, :count).by(1)
      end

      it "assigns a newly created send_sms as @send_sms" do
        post :create, {:send_sms => valid_attributes}, valid_session
        assigns(:send_sms).should be_a(SendSms)
        assigns(:send_sms).should be_persisted
      end

      it "redirects to the created send_sms" do
        post :create, {:send_sms => valid_attributes}, valid_session
        response.should redirect_to(SendSms.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved send_sms as @send_sms" do
        # Trigger the behavior that occurs when invalid params are submitted
        SendSms.any_instance.stub(:save).and_return(false)
        post :create, {:send_sms => {  }}, valid_session
        assigns(:send_sms).should be_a_new(SendSms)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SendSms.any_instance.stub(:save).and_return(false)
        post :create, {:send_sms => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested send_sms" do
        send_sms = SendSms.create! valid_attributes
        # Assuming there are no other send_sms in the database, this
        # specifies that the SendSms created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SendSms.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => send_sms.to_param, :send_sms => { "these" => "params" }}, valid_session
      end

      it "assigns the requested send_sms as @send_sms" do
        send_sms = SendSms.create! valid_attributes
        put :update, {:id => send_sms.to_param, :send_sms => valid_attributes}, valid_session
        assigns(:send_sms).should eq(send_sms)
      end

      it "redirects to the send_sms" do
        send_sms = SendSms.create! valid_attributes
        put :update, {:id => send_sms.to_param, :send_sms => valid_attributes}, valid_session
        response.should redirect_to(send_sms)
      end
    end

    describe "with invalid params" do
      it "assigns the send_sms as @send_sms" do
        send_sms = SendSms.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SendSms.any_instance.stub(:save).and_return(false)
        put :update, {:id => send_sms.to_param, :send_sms => {  }}, valid_session
        assigns(:send_sms).should eq(send_sms)
      end

      it "re-renders the 'edit' template" do
        send_sms = SendSms.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SendSms.any_instance.stub(:save).and_return(false)
        put :update, {:id => send_sms.to_param, :send_sms => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested send_sms" do
      send_sms = SendSms.create! valid_attributes
      expect {
        delete :destroy, {:id => send_sms.to_param}, valid_session
      }.to change(SendSms, :count).by(-1)
    end

    it "redirects to the send_sms list" do
      send_sms = SendSms.create! valid_attributes
      delete :destroy, {:id => send_sms.to_param}, valid_session
      response.should redirect_to(send_sms_index_url)
    end
  end

end