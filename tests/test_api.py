# coding=utf-8
"""BUHO Menu Management API testing feature tests."""
import requests
from pytest_bdd import (
    given,
    scenario,
    then,
    when,
)
from requests.structures import CaseInsensitiveDict

from api_config import config


@scenario('features/test_api.feature', 'The menu is loaded')
def test_the_menu_is_loaded():
    """The menu is loaded."""


@given('Login to the admin page')
def login_to_the_admin_page(self):
    self.url = f"{config.BASE_URL}"
    self.headers = CaseInsensitiveDict()
    self.headers["Authorization"] = config.BEARER_TOKEN


@when('the <method> request with uri <uri> is sent')
def the__request_with_uri_is_sent(self, method, uri):
    self.url = self.url + {uri}
    if method == "get":
        self.response = requests.get(self.url, headers=self.headers)
    else:
        print("Is not supported yet.")
    return self.response


@then('response status should be <status_code>')
def response_status_should_be_(self, status_code):
    assert self.response.status_code == status_code
