import logging
import sys

from django.shortcuts import render
from django.views.generic.base import View

logging.basicConfig(stream=sys.stdout,
                    level=logging.INFO,
                    format='[%(asctime)s] [%(levelname)s] %(message)s')


class HomeView(View):

    def get(self, request):
        return render(request, 'home/index.html', {})
