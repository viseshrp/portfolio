from django.urls import path
from rest_framework.routers import DefaultRouter

from home import api_views

router = DefaultRouter()

urlpatterns = [
    # path('contact-us/', api_views.ContactUsAPIView.as_view(), name='contact-us'),
]

urlpatterns += router.urls
