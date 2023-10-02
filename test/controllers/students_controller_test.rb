require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { Adresse: @student.Adresse, Date_de_naissance: @student.Date_de_naissance, Email: @student.Email, Nationalité: @student.Nationalité, Nom: @student.Nom, Prénom: @student.Prénom, Téléphone: @student.Téléphone, Ville: @student.Ville, code_postal: @student.code_postal, commune: @student.commune, password: @student.password, sexe: @student.sexe, spécialité: @student.spécialité } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { Adresse: @student.Adresse, Date_de_naissance: @student.Date_de_naissance, Email: @student.Email, Nationalité: @student.Nationalité, Nom: @student.Nom, Prénom: @student.Prénom, Téléphone: @student.Téléphone, Ville: @student.Ville, code_postal: @student.code_postal, commune: @student.commune, password: @student.password, sexe: @student.sexe, spécialité: @student.spécialité } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
