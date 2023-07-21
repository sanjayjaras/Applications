import { NgbActiveModal } from '@ng-bootstrap/ng-bootstrap';
import { QuickCmds } from '../api';
export declare class EditCommandModalComponent {
    private modalInstance;
    command: QuickCmds;
    constructor(modalInstance: NgbActiveModal);
    save(): void;
    cancel(): void;
}
