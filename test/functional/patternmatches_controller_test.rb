require 'test_helper'

class PatternmatchesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Patternmatch.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Patternmatch.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Patternmatch.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to patternmatch_url(assigns(:patternmatch))
  end

  def test_edit
    get :edit, :id => Patternmatch.first
    assert_template 'edit'
  end

  def test_update_invalid
    Patternmatch.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Patternmatch.first
    assert_template 'edit'
  end

  def test_update_valid
    Patternmatch.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Patternmatch.first
    assert_redirected_to patternmatch_url(assigns(:patternmatch))
  end

  def test_destroy
    patternmatch = Patternmatch.first
    delete :destroy, :id => patternmatch
    assert_redirected_to patternmatches_url
    assert !Patternmatch.exists?(patternmatch.id)
  end
end
