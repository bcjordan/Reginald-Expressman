require 'test_helper'

class AliasesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Alias.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Alias.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Alias.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to alias_url(assigns(:alias))
  end

  def test_edit
    get :edit, :id => Alias.first
    assert_template 'edit'
  end

  def test_update_invalid
    Alias.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Alias.first
    assert_template 'edit'
  end

  def test_update_valid
    Alias.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Alias.first
    assert_redirected_to alias_url(assigns(:alias))
  end

  def test_destroy
    alias = Alias.first
    delete :destroy, :id => alias
    assert_redirected_to aliases_url
    assert !Alias.exists?(alias.id)
  end
end
