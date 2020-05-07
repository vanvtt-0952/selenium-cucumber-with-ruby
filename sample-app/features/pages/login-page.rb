require_relative "page"

class LoginPage < Page
  LOGIN_FORM = {id: "login"}
  USERNAME_INPUT = {id: "username"}
  PASSWORD_INPUT = {id: "password"}
  SUBMIT_BUTTON = {css: "button"}
  SUCCESS_MESSAGE = {css: ".flash.success"}
  FAILURE_MESSAGE = {css: ".flash.error"}

  def initialize(browser)
    super
    visit "http://the-internet.herokuapp.com/login"
    raise "visit page not ready" unless is_displayed?(LOGIN_FORM)
  end

  def enterUsername(username)
    type username, USERNAME_INPUT
  end

  def enterPassword(password)
    type password, PASSWORD_INPUT
  end

  def clickLoginButton
    click SUBMIT_BUTTON
  end

  def verifyMessageSuccess()
    is_displayed?(SUCCESS_MESSAGE)
  end
end
