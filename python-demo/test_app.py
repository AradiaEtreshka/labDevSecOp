from app import saludar

def test_saludar():
    esperado = (
        "Bienvenido al Diplomado de Ciberseguridad, Anahi. "
        "Esperamos que este laboratorio fortalezca tus conocimientos "
        "sobre AWS CodeCommit y AWS CodeBuild."
    )
    assert saludar("Anahi") == esperado