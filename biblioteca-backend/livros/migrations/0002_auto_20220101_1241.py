# Generated by Django 3.2.9 on 2022-01-01 15:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('livros', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='livros',
            name='image',
        ),
        migrations.AddField(
            model_name='livros',
            name='images',
            field=models.ImageField(default='', editable=False, upload_to='', verbose_name='media/%d/%m/%Y'),
        ),
    ]
