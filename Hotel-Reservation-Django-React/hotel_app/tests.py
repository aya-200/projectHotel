from django.test import TestCase
from hotel_app.models import Category 


Category.objects.bulk_create([
    Category(category_name='Trippel'),
    Category(category_name='Double'),
    Category(category_name='Single'),
    Category(category_name='Family'),
    Category(category_name='All'),
])


# Create your tests here.
