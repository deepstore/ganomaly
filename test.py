from options import Options
from lib.data import load_data
from lib.model import Ganomaly

def test():
    ##
    # ARGUMENTS
    opt = Options().parse()
    ##
    # LOAD DATA
    dataloader = load_data(opt)
    ##
    # LOAD MODEL
    model = Ganomaly(opt, dataloader)
    ##
    # test model
    performance = model.test()
    print(performance)

if __name__ == '__main__':
    test()
