from peewee import *

database = MySQLDatabase('rank', **{'user': 'root'})

class UnknownField(object):
    pass

class BaseModel(Model):
    class Meta:
        database = database

class Rank(BaseModel):
    name = CharField(db_column='Name', primary_key=True)
    pt = IntegerField(db_column='PT', null=True)
    rank = IntegerField(db_column='Rank', null=True)

    class Meta:
        db_table = 'rank'

class Rankfull(BaseModel):
    name = CharField(db_column='Name', primary_key=True)
    pt = IntegerField(db_column='PT', null=True)
    rank = IntegerField(db_column='Rank', null=True)

    class Meta:
        db_table = 'rankfull'

