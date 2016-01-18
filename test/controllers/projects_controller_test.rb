require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { approved: @project.approved, dateapproved: @project.dateapproved, datecreated: @project.datecreated, dateedited: @project.dateedited, datereviewed: @project.datereviewed, dateunderreview: @project.dateunderreview, description: @project.description, exists: @project.exists, metricLOS: @project.metricLOS, name: @project.name, new: @project.new, oldscore: @project.oldscore, ondeck: @project.ondeck, score: @project.score, sendto: @project.sendto, subtitle: @project.subtitle, visibleBill: @project.visibleBill, visibleBrian: @project.visibleBrian, visibleDamien: @project.visibleDamien, visibleNeha: @project.visibleNeha, visibleRoy: @project.visibleRoy, visibleSubha: @project.visibleSubha, visiblemhealth: @project.visiblemhealth, visiblepenn: @project.visiblepenn }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { approved: @project.approved, dateapproved: @project.dateapproved, datecreated: @project.datecreated, dateedited: @project.dateedited, datereviewed: @project.datereviewed, dateunderreview: @project.dateunderreview, description: @project.description, exists: @project.exists, metricLOS: @project.metricLOS, name: @project.name, new: @project.new, oldscore: @project.oldscore, ondeck: @project.ondeck, score: @project.score, sendto: @project.sendto, subtitle: @project.subtitle, visibleBill: @project.visibleBill, visibleBrian: @project.visibleBrian, visibleDamien: @project.visibleDamien, visibleNeha: @project.visibleNeha, visibleRoy: @project.visibleRoy, visibleSubha: @project.visibleSubha, visiblemhealth: @project.visiblemhealth, visiblepenn: @project.visiblepenn }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
