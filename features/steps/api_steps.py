import requests, json
from behave import *
from api_config import config
from requests.structures import CaseInsensitiveDict


@given(u'Login to the admin page')
def step_impl(context):
    """ Do something here."""
    context.url = f"{config.BASE_URL}"
    context.headers = CaseInsensitiveDict()
    context.headers["Authorization"] = config.BEARER_TOKEN


@given(u'Login as Admin  user')
def step_impl(context):
    """ Do something here."""
    context.url = f"{config.R_STAGING_ENDPOINT}"
    context.auth = ("tien.tran", "test@123")
    context.headers = CaseInsensitiveDict()
    context.headers["Authorization"] = "Basic dGllbi50cmFuOnRlc3RAMTIz"
    context.headers["Content-Type"] = "application/json"


@when(u'The "{method}" request with uri "{uri}" is sent')
def step_impl(context, method, uri):
    context.url = context.url + uri
    methods = ["GET", "POST", "PATCH", "DELETE"]
    if method.upper() in methods:
        context.response = requests.get(context.url, headers=context.headers)
    else:
        print("Is not supported yet.")
    return context.response


@when(u'The POST request with uri "{uri}" and payload bellow is sent.')
def step_impl(context, uri):
    context.url = context.url + uri
    input_data = context.text
    context.response = requests.post(context.url, headers=context.headers, data=input_data.encode('utf-8'))
    return context.response


# not working
@when(u'The url is:')
def step_impl(context):
    print(context.url)
    return context.url


@then(u'The response status should be: {status_code}')
def step_impl(context, status_code):
    status_codes = ["200", "201", "400", "401", "403", "404", "405", "500", "502", "504"]
    """ Nếu ở trong list các status code thì mình check tiếp"""
    if status_code in status_codes:
        assert context.response.status_code == int(status_code)
    else:
        raise Exception(
            f"The status code {status_code} (type: {type(status_code)}) is not supported. It should be {context.response.status_code} (type: {type(context.response.status_code)}).")


@then(u'The success should be: {success}')
def step_impl(context, success):
    # print(context.response.json()['success'], type(context.response.json()['success']))
    # print(success, type(success))
    success_cv = False
    if success.lower() == "true":
        success_cv = True
    elif success.lower() == "false":
        success_cv = False
    assert context.response.json()['success'] == success_cv


@then(u'The status in json should be: {json_status_code}')
def step_impl(context, json_status_code):
    assert context.response.json()['statusCode'] == int(json_status_code)


@then(u'The message should be: "{message}"')
def step_impl(context, message):
    print(context.response.json()['statusMessage'])
    if message != "empty":
        assert context.response.json()['statusMessage'] == message
    else:
        raise Exception(
            f"The message you want to check is empty. It should be {context.response.json()['statusMessage']}")


@then(u'The data should be: {data}')
def step_impl(context, data):
    print(context.response.json()['data'], type(context.response.json()['data']))
    print(data, type(data))
    assert context.response.json()['data'] == data


@then(u'The data should be null')
def step_impl(context):
    assert context.response.json()['data'] is None


@then(u'The response should match as bellow')
def step_impl(context):
    print(context.response.json(), type(context.response.json()))
    print(context.text, type(context.text))
    assert context.response.json() == dict(context.text)
