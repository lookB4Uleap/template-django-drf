from django.shortcuts import render
from rest_framework import status, permissions
from rest_framework.decorators import api_view, permission_classes
from rest_framework.response import Response


@api_view(['GET'])
# @permission_classes(permissions.AllowAny)
def root(request):
    if request.method != 'GET':
        return Response('Not Found', status=status.HTTP_404_NOT_FOUND)

    return Response('Sample Django REST Backend', status=status.HTTP_200_OK)

