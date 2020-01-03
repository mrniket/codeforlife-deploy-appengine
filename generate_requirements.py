from lib.portal import __version__ as portal_version
from lib.aimmo import __version__ as aimmo_version

requirements = (
    f"codeforlife-portal=={portal_version}\n"
    f"aimmo=={aimmo_version}\n"
    f"requests-toolbelt\n"
    f"mysqlclient\n"
    f"redis\n"
    f"django-redis"
)

requirements_path = "requirements.txt"
requirements_file = open(requirements_path, "w")
requirements_file.write(requirements)
requirements_file.close()
