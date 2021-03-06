import pytest

@pytest.fixture(scope="function", autouse=True)
def isolate(fn_isolation):
    pass

@pytest.fixture(scope="module")
def dex(Dex, accounts):
    return accounts[0].deploy(Dex)

@pytest.fixture(scope="module")
def ecrecoverTest(EcrecoverTest, accounts):
    return accounts[0].deploy(EcrecoverTest)