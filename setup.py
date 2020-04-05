from setuptools import find_packages, setup

with open('python_example_repo/_version.py', r) as ver_file:
    exec(ver_file.read())

with open('README.md', 'r') as r:
    readme = r.read()

setup(
    name='python_example_repo',
    version=__version__,
    description='A project skeleton of best practices',
    long_description=readme,
    packages=find_packages(where='.', exclude=('test', 'docs')),
    install_requires=[]
)
