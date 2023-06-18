from django.http import HttpResponse


def test(request):
    return HttpResponse("Hello from PROJECT view")
