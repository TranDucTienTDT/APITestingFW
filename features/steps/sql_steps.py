import mysql
import mysql.connector

from behave import *
from api_config import config


@given(u'Connect to Sandbox Database')
def step_impl(context):
    context.connector = mysql.connector.connect(
        host=config.HOST,
        user=config.USER,
        password=config.PASSWORD,
        port=config.PORT,
        database=config.DATABASE
    )


@when(u'The query is excuted')
def step_impl(context):
    cursor = context.connector.cursor()
    cursor.execute(context.text)
    context.result = cursor.fetchall()


@then(u'The result will be matched with table:')
def step_impl(context):
    print("The result: ", context.result)
    for x in context.result:
        print(x)
