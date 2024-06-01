from django.shortcuts import render
from .models import News

# Create your views here.
def news(request):
     #return render(request, 'news.html')
   # newss = News.objects.all()
    #return render(request, 'news.html', {'newss':newss})

    newss = News.objects.all().order_by('-date')
    return render(request, 'news.html', {'newss':newss})


